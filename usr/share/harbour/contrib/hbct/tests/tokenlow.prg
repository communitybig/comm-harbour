/*
 * Test CT3 function TokenLower()
 *
 * Copyright 2001 IntTec GmbH, Neunlindenstr 32, 79106 Freiburg, Germany
 *        Author: Martin Vogel <vogel@inttec.de>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file LICENSE.txt.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA (or visit https://www.gnu.org/licenses/).
 *
 * As a special exception, the Harbour Project gives permission for
 * additional uses of the text contained in its release of Harbour.
 *
 * The exception is that, if you link the Harbour libraries with other
 * files to produce an executable, this does not by itself cause the
 * resulting executable to be covered by the GNU General Public License.
 * Your use of that executable is in no way restricted on account of
 * linking the Harbour library code into it.
 *
 * This exception does not however invalidate any other reasons why
 * the executable file might be covered by the GNU General Public License.
 *
 * This exception applies only to the code released by the Harbour
 * Project under the name Harbour.  If you copy code from other
 * Harbour Project or Free Software Foundation releases into a copy of
 * Harbour, as the General Public License permits, the exception does
 * not apply to the code that you add in this way.  To avoid misleading
 * anyone as to the status of such modified files, you must delete
 * this exception notice from them.
 *
 * If you write modifications of your own for Harbour, it is your choice
 * whether to permit this exception to apply to your modifications.
 * If you do not wish that, delete this exception notice.
 *
 */

#ifdef __HARBOUR__
#require "hbct"
#endif

PROCEDURE Main()

   LOCAL cStr := ".,.This.,.is.,.a.,.test!"

   ? "Begin test of TokenLower()"
   ?

   ? "  Simple tests:"
   ? '   TokenLower( "Hello, World, here I am!" )         == "hello, world, here i am!" ?'
   ? '                                                   -->', '"' + TokenLower( "Hello, World, here I am!" ) + '"'
   ? '   TokenLower( "Hello, World, here I am!",, 3 )     == "hello, world, here I am!" ?'
   ? '                                                   -->', '"' + TokenLower( "Hello, World, here I am!",, 3 ) + '"'
   ? '   TokenLower( "Hello, World, here I am!", ",", 3 ) == "hello, World, here I am!" ?'
   ? '                                                   -->', '"' + TokenLower( "Hello, World, here I am!", ",", 3 ) + '"'
   ? '   TokenLower( "Hello, World, here I am!", " W" )   == "hello, World, here i am!" ?'
   ? '                                                   -->', '"' + TokenLower( "Hello, World, here I am!", " W" ) + '"'
   ?

   ? '  Lowercase the tokens in the string', '"' + cStr + '"'
   ? '            with CSetRef( .T. ) and "@"'
   CSetRef( .T. )
   ?
   ? '    --> return value of TokenLower( @cStr ):', TokenLower( @cStr )
   ? '    --> cStr is now:', '"' + cStr + '"'

   ?
   ? "End test of TokenLower()"
   ?

   RETURN
