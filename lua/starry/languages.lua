-- language specific higlights
local lush = require("lush")
local main = require("starry.main")
local styles = require("starry.config").styles
local table_concat = table.concat

-- golang
local golang = lush(function()
  return {
    goDirective {main.StarryAqua},
    goConstants {main.StarryPurple},
    goDeclaration {main.StarryRed},
    goDeclType {main.StarryBlue},
    goBuiltins {main.StarryOrange},
  }
end)

-- java
local java = lush(function()
  return {
    javaAnnotation {main.StarryBlue},
    javaDocTags {main.StarryAqua},
    javaCommentTitle {base.Comment},
    javaParen {main.StarryFg3},
    javaParen1 {main.StarryFg3},
    javaParen2 {main.StarryFg3},
    javaParen3 {main.StarryFg3},
    javaParen4 {main.StarryFg3},
    javaParen5 {main.StarryFg3},
    javaOperator {main.StarryOrange},
  }
end)

-- xml
local xml = lush(function()
  return {
    xmlTag {main.StarryAquaBold},
    xmlEndTag {main.StarryAquaBold},
    xmlTagName {main.StarryBlue},
    xmlEqual {main.StarryBlue},
    docbkKeyword {main.StarryAquaBold},
    xmlDocTypeDecl {main.StarryGray},
    xmlDocTypeKeyword {main.StarryPurple},
    xmlCdataStart {main.StarryGray},
    xmlCdataCdata {main.StarryPurple},
    dtdFunction {main.StarryGray},
    dtdTagName {main.StarryPurple},
    xmlAttrib {main.StarryOrange},
    xmlProcessingDelim {main.StarryGray},
    dtdParamEntityPunct {main.StarryGray},
    dtdParamEntityDPunct {main.StarryGray},
    xmlAttribPunct {main.StarryGray},
    xmlEntity {main.StarryRed},
    xmlEntityPunct {main.StarryRed},
  }
end)

local viml = lush(function()
  return {
    vimNotation {main.StarryOrange},
    vimBracket {main.StarryOrange},
    vimMapModKey {main.StarryOrange},
    vimFuncSID {main.StarryFg3},
    vimSetSep {main.StarryFg3},
    vimSep {main.StarryFg3},
    vimContinue {main.StarryFg3},
  }
end)

local c = lush(function()
  return {
    cOperator {main.StarryPurple},
    cppOperator {main.StarryPurple},
    cStructure {main.StarryOrange},

  }
end)

local python = lush(function()
  return {
    pythonBuiltin {main.StarryOrange},
    pythonBuiltinObj {main.StarryOrange},
    pythonBuiltinFunc {main.StarryOrange},
    pythonFunction {main.StarryAqua},
    pythonDecorator {main.StarryRed},
    pythonInclude {main.StarryBlue},
    pythonImport {main.StarryBlue},
    pythonRun {main.StarryBlue},
    pythonCoding {main.StarryBlue},
    pythonOperator {main.StarryRed},
    pythonException {main.StarryRed},
    pythonExceptions {main.StarryPurple},
    pythonBoolean {main.StarryPurple},
    pythonDot {main.StarryFg3},
    pythonConditional {main.StarryRed},
    pythonRepeat {main.StarryRed},
    pythonDottedName {main.StarryGreenBold},
  }
end)

local clojure = lush(function()
  return {
    clojureKeyword {main.StarryBlue},
    clojureCond {main.StarryOrange},
    clojureSpecial {main.StarryOrange},
    clojureDefine {main.StarryOrange},
    clojureFunc {main.StarryYellow},
    clojureRepeat {main.StarryYellow},
    clojureCharacter {main.StarryAqua},
    clojureStringEscape {main.StarryAqua},
    clojureException {main.StarryRed},
    clojureRegexp {main.StarryAqua},
    clojureRegexpEscape {main.StarryAqua},
    clojureParen {main.StarryFg3},
    clojureAnonArg {main.StarryYellow},
    clojureVariable {main.StarryBlue},
    clojureMacro {main.StarryOrange},
    clojureMeta {main.StarryYellow},
    clojureDeref {main.StarryYellow},
    clojureQuote {main.StarryYellow},
    clojureUnquote {main.StarryYellow},
    clojureRegexpCharClass {fg = main.StarryFg3.fg.hex, gui = styles.bold},
    clojureRegexpMod {clojureRegexpCharClass},
    clojureRegexpQuantifier {clojureRegexpCharClass},
  }
end)

local html = lush(function()
  return {
    htmlTag {main.StarryAquaBold},
    htmlEndTag {main.StarryAquaBold},
    htmlTagName {main.StarryBlue},
    htmlArg {main.StarryOrange},
    htmlScriptTag {main.StarryPurple},
    htmlTagN {main.StarryFg1},
    htmlSpecialTagName {main.StarryBlue},
    htmlSpecialChar {main.StarryRed},
    htmlLink {fg = main.StarryFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = main.StarryFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = main.StarryFg1.fg.hex,
      gui = table_concat({styles.bold, styles.underline}, ","),
    },
    htmlBoldItalic {
      fg = main.StarryFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlBoldUnderlineItalic {
      fg = main.StarryFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlItalic {fg = main.StarryFg1.fg.hex, gui = styles.italic_strings},
  }
end)

local css = lush(function()
  return {
    cssBraces {main.StarryBlue},
    cssFunctionName {main.StarryYellow},
    cssIdentifier {main.StarryOrange},
    cssClassName {main.StarryGreen},
    cssColor {main.StarryBlue},
    cssSelectorOp {main.StarryBlue},
    cssSelectorOp2 {main.StarryBlue},
    cssImportant {main.StarryGreen},
    cssVendor {main.StarryFg1},
    cssTextProp {main.StarryAqua},
    cssAnimationProp {main.StarryAqua},
    cssUIProp {main.StarryYellow},
    cssTransformProp {main.StarryAqua},
    cssTransitionProp {main.StarryAqua},
    cssPrintProp {main.StarryAqua},
    cssPositioningProp {main.StarryYellow},
    cssBoxProp {main.StarryAqua},
    cssFontDescriptorProp {main.StarryAqua},
    cssFlexibleBoxProp {main.StarryAqua},
    cssBorderOutlineProp {main.StarryAqua},
    cssBackgroundProp {main.StarryAqua},
    cssMarginProp {main.StarryAqua},
    cssListProp {main.StarryAqua},
    cssTableProp {main.StarryAqua},
    cssFontProp {main.StarryAqua},
    cssPaddingProp {main.StarryAqua},
    cssDimensionProp {main.StarryAqua},
    cssRenderProp {main.StarryAqua},
    cssColorProp {main.StarryAqua},
    cssGeneratedContentProp {main.StarryAqua},
  }
end)

local js = lush(function()
  return {
    javaScriptBraces {main.StarryFg1},
    javaScriptFunction {main.StarryAqua},
    javaScriptIdentifier {main.StarryRed},
    javaScriptMember {main.StarryBlue},
    javaScriptNumber {main.StarryPurple},
    javaScriptNull {main.StarryPurple},
    javaScriptParens {main.StarryFg3},
    javascriptImport {main.StarryAqua},
    javascriptExport {main.StarryAqua},
    javascriptClassKeyword {main.StarryAqua},
    javascriptClassExtends {main.StarryAqua},
    javascriptDefault {main.StarryAqua},
    javascriptClassName {main.StarryYellow},
    javascriptClassSuperName {main.StarryYellow},
    javascriptGlobal {main.StarryYellow},
    javascriptEndColons {main.StarryFg1},
    javascriptFuncArg {main.StarryFg1},
    javascriptGlobalMethod {main.StarryFg1},
    javascriptNodeGlobal {main.StarryFg1},
    javascriptBOMWindowProp {main.StarryFg1},
    javascriptArrayMethod {main.StarryFg1},
    javascriptArrayStaticMethod {main.StarryFg1},
    javascriptCacheMethod {main.StarryFg1},
    javascriptDateMethod {main.StarryFg1},
    javascriptMathStaticMethod {main.StarryFg1},
    javascriptProp {main.StarryFg1},
    javascriptURLUtilsProp {main.StarryFg1},
    javascriptBOMNavigatorProp {main.StarryFg1},
    javascriptDOMDocMethod {main.StarryFg1},
    javascriptDOMDocProp {main.StarryFg1},
    javascriptBOMLocationMethod {main.StarryFg1},
    javascriptBOMWindowMethod {main.StarryFg1},
    javascriptStringMethod {main.StarryFg1},
    javascriptVariable {main.StarryOrange},
    javascriptClassSuper {main.StarryOrange},
    javascriptFuncKeyword {main.StarryAqua},
    javascriptAsyncFunc {main.StarryAqua},
    javascriptClassStatic {main.StarryOrange},
    javascriptOperator {main.StarryRed},
    javascriptForOperator {main.StarryRed},
    javascriptYield {main.StarryRed},
    javascriptExceptions {main.StarryRed},
    javascriptMessage {main.StarryRed},
    javascriptTemplateSB {main.StarryAqua},
    javascriptTemplateSubstitution {main.StarryFg1},
    javascriptLabel {main.StarryFg1},
    javascriptObjectLabel {main.StarryFg1},
    javascriptPropertyName {main.StarryFg1},
    javascriptLogicSymbols {main.StarryFg1},
    javascriptArrowFunc {main.StarryYellow},
    javascriptDocParamName {main.StarryFg4},
    javascriptDocTags {main.StarryFg4},
    javascriptDocNotation {main.StarryFg4},
    javascriptDocParamType {main.StarryFg4},
    javascriptDocNamedParamType {main.StarryFg4},
    javascriptBrackets {main.StarryFg1},
    javascriptDOMElemAttrs {main.StarryFg1},
    javascriptDOMEventMethod {main.StarryFg1},
    javascriptDOMNodeMethod {main.StarryFg1},
    javascriptDOMStorageMethod {main.StarryFg1},
    javascriptHeadersMethod {main.StarryFg1},
    javascriptAsyncFuncKeyword {main.StarryRed},
    javascriptAwaitFuncKeyword {main.StarryRed},
    jsClassKeyword {main.StarryAqua},
    jsExtendsKeyword {main.StarryAqua},
    jsExportDefault {main.StarryAqua},
    jsTemplateBraces {main.StarryAqua},
    jsGlobalNodeObjects {main.StarryBlue},
    jsGlobalObjects {main.StarryBlue},
    jsObjectKey {main.StarryGreenBold},
    jsFunction {main.StarryAqua},
    jsFuncCall {main.StarryBlue},
    jsFuncParens {main.StarryFg3},
    jsParens {main.StarryFg3},
    jsNull {main.StarryPurple},
    jsUndefined {main.StarryPurple},
    jsClassDefinition {main.StarryYellow},
    jsOperatorKeyword {main.StarryRed},
  }
end)

local typescript = lush(function()
  return {
    typescriptReserved {main.StarryAqua},
    typescriptLabel {main.StarryAqua},
    typescriptFuncKeyword {main.StarryAqua},
    typescriptIdentifier {main.StarryOrange},
    typescriptBraces {main.StarryOrange},
    typescriptEndColons {main.StarryFg1},
    typescriptDOMObjects {main.StarryFg1},
    typescriptAjaxMethods {main.StarryFg1},
    typescriptLogicSymbols {main.StarryOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {main.StarryFg1},
    typescriptParens {main.StarryOrange},
    typescriptOpSymbols {main.StarryOrange},
    typescriptHtmlElemProperties {main.StarryFg1},
    typescriptNull {main.StarryPurple},
    typescriptInterpolationDelimiter {main.StarryAqua},
    typescriptArrowFunc {main.StarryFg1},
    typescriptCharacter {main.StarryOrange},
    typescriptUnion {main.StarryOrange},
    typescriptDotNotation {main.StarryOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
  }
end)

local jsx = lush(function()
  return {
    jsxTagName {main.StarryAqua},
    jsxComponentName {main.StarryGreen},
    jsxCloseString {main.StarryFg4},
    jsxAttrib {main.StarryYellow},
    jsxEqual {main.StarryAqua},
  }
end)

local purescript = lush(function()
  return {
    purescriptModuleKeyword {main.StarryAqua},
    purescriptModuleName {main.StarryFg1},
    purescriptWhere {main.StarryAqua},
    purescriptDelimiter {main.StarryFg4},
    purescriptType {main.StarryFg1},
    purescriptImportKeyword {main.StarryAqua},
    purescriptHidingKeyword {main.StarryAqua},
    purescriptAsKeyword {main.StarryAqua},
    purescriptStructure {main.StarryAqua},
    purescriptOperator {main.StarryBlue},
    purescriptTypeVar {main.StarryFg1},
    purescriptConstructor {main.StarryFg1},
    purescriptFunction {main.StarryFg1},
    purescriptConditional {main.StarryOrange},
    purescriptBacktick {main.StarryOrange},
  }
end)

local coffeescript = lush(function()
  return {
    coffeeExtendedOp {main.StarryFg3},
    coffeeSpecialOp {main.StarryFg3},
    coffeeCurly {main.StarryOrange},
    coffeeParen {main.StarryFg3},
    coffeeBracket {main.StarryOrange},
  }
end)

local ruby = lush(function()
  return {
    rubyStringDelimiter {main.StarryGreen},
    rubyInterpolationDelimiter {main.StarryAqua},
  }
end)

local objc = lush(function()
  return {objcTypeModifier {main.StarryRed}, objcDirective {main.StarryBlue}}
end)

local moonscript = lush(function()
  return {
    moonSpecialOp {main.StarryFg3},
    moonExtendedOp {main.StarryFg3},
    moonFunction {main.StarryFg3},
    moonObject {main.StarryYellow},
  }
end)

local elixir = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {main.StarryGreen},
    elixirInterpolationDelimiter {main.StarryAqua},
    elixirModuleDeclaration {main.StarryYellow},
  }
end)

local scala = lush(function()
  return {
    scalaNameDefinition {main.StarryFg1},
    scalaCaseFollowing {main.StarryFg1},
    scalaCapitalWord {main.StarryFg1},
    scalaTypeExtension {main.StarryFg1},
    scalaKeyword {main.StarryRed},
    scalaKeywordModifier {main.StarryRed},
    scalaSpecial {main.StarryAqua},
    scalaOperator {main.StarryFg1},
    scalaTypeDeclaration {main.StarryYellow},
    scalaTypeTypePostDeclaration {main.StarryYellow},
    scalaInstanceDeclaration {main.StarryFg1},
    scalaInterpolation {main.StarryAqua},
  }
end)

local markdown = lush(function()
  return {
    markdownItalic {fg = main.StarryFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {main.StarryGreenBold},
    markdownH2 {markdownH1},
    markdownH3 {main.StarryYellowBold},
    markdownH4 {markdownH3},
    markdownH5 {main.StarryYellow},
    markdownH6 {markdownH5},
    markdownCode {main.StarryAqua},
    markdownCodeBlock {main.StarryAqua},
    markdownCodeDelimiter {main.StarryAqua},
    markdownBlockquote {main.StarryGray},
    markdownListMarker {main.StarryGray},
    markdownOrderedListMarker {main.StarryGray},
    markdownRule {main.StarryGray},
    markdownHeadingRule {main.StarryGray},
    markdownUrlDelimiter {main.StarryFg3},
    markdownLinkDelimiter {main.StarryFg3},
    markdownLinkTextDelimiter {main.StarryFg3},
    markdownHeadingDelimiter {main.StarryOrange},
    markdownUrl {main.StarryPurple},
    markdownUrlTitleDelimiter {main.StarryGreen},
    markdownLinkText {fg = main.StarryGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

local haskell = lush(function()
  return {
    haskellType {main.StarryBlue},
    haskellIdentifier {main.StarryAqua},
    haskellSeparator {main.StarryFg4},
    haskellDelimiter {main.StarryOrange},
    haskellOperators {main.StarryPurple},
    haskellBacktick {main.StarryOrange},
    haskellStatement {main.StarryPurple},
    haskellConditional {main.StarryPurple},
    haskellLet {main.StarryRed},
    haskellDefault {main.StarryRed},
    haskellWhere {main.StarryRed},
    haskellBottom {main.StarryRedBold},
    haskellImportKeywords {main.StarryPurpleBold},
    haskellDeclKeyword {main.StarryOrange},
    haskellDecl {main.StarryOrange},
    haskellDeriving {main.StarryPurple},
    haskellAssocType {main.StarryAqua},
    haskellNumber {main.StarryAqua},
    haskellPragma {main.StarryRedBold},
    haskellTH {main.StarryAquaBold},
    haskellForeignKeywords {main.StarryGreen},
    haskellKeyword {main.StarryRed},
    haskellFloat {main.StarryAqua},
    haskellInfix {main.StarryPurple},
    haskellQuote {main.StarryGreenBold},
    haskellShebang {main.StarryYellowBold},
    haskellLiquid {main.StarryPurpleBold},
    haskellQuasiQuoted {main.StarryBlueBold},
    haskellRecursiveDo {main.StarryPurple},
    haskellQuotedType {main.StarryRed},
    haskellPreProc {main.StarryFg4},
    haskellTypeRoles {main.StarryRedBold},
    haskellTypeForall {main.StarryRed},
    haskellPatternKeyword {main.StarryBlue},

  }
end)

local json = lush(function()
  return {
    jsonKeyword {main.StarryGreen},
    jsonQuote {main.StarryGreen},
    jsonBraces {main.StarryFg1},
    jsonString {main.StarryFg1},
  }
end)

local csharp = lush(function()
  return {
    csBraces {main.StarryFg1},
    csEndColon {main.StarryFg1},
    csLogicSymbols {main.StarryFg1},
    csParens {main.StarryFg3},
    csOpSymbols {main.StarryFg3},
    csInterpolationDelimiter {main.StarryFg3},
    csInterpolationAlignDel {main.StarryAquaBold},
    csInterpolationFormat {main.StarryAqua},
    csInterpolationFormatDel {main.StarryAquaBold},
  }
end)

local rust = lush(function()
  return {
    rustSigil {main.StarryOrange},
    rustEscape {main.StarryAqua},
    rustStringContinuation {main.StarryAqua},
    rustEnum {main.StarryAqua},
    rustStructure {main.StarryAqua},
    rustModPathSep {main.StarryFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {main.StarryAqua},
  }
end)

local ocaml = lush(function()
  return {
    ocamlOperator {main.StarryFg1},
    ocamlKeyChar {main.StarryOrange},
    ocamlArrow {main.StarryOrange},
    ocamlInfixOpKeyword {main.StarryRed},
    ocamlConstructor {main.StarryOrange},
  }
end)

local lua = lush(function()
  return {
    luaIn {main.StarryRed},
    luaFunction {main.StarryAqua},
    luaTable {main.StarryOrange},
  }
end)

local langs = lush.merge({
  golang,
  java,
  xml,
  viml,
  c,
  python,
  clojure,
  html,
  css,
  js,
  typescript,
  jsx,
  purescript,
  coffeescript,
  ruby,
  objc,
  moonscript,
  elixir,
  scala,
  markdown,
  haskell,
  json,
  csharp,
  rust,
  ocaml,
  lua,
})

return langs
