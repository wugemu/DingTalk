.class public final Ldnl;
.super Ldni;
.source "HtmlColorNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldni",
        "<",
        "Lldd;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/regex/Matcher;

.field public static final j:Ljava/util/regex/Matcher;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;


# instance fields
.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 24
    const-string/jumbo v0, "^(<font)[^>]*(\\s)(color)(\\s*)=(\\s*)(\"{0,1})(#*[0-9a-zA-Z]{1,8})(\"{0,1})[^>]*>$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 25
    sput-object v0, Ldnl;->k:Ljava/util/regex/Pattern;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Ldnl;->i:Ljava/util/regex/Matcher;

    .line 27
    const-string/jumbo v0, "^</font>$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 28
    sput-object v0, Ldnl;->l:Ljava/util/regex/Pattern;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Ldnl;->j:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Lldd;ILdnx;)V
    .locals 0
    .param p1, "node"    # Lldd;
    .param p2, "color"    # I
    .param p3, "textColorProvider"    # Ldnx;

    .prologue
    .line 33
    invoke-direct {p0, p1, p3}, Ldni;-><init>(Lldd;Ldnx;)V

    .line 34
    iput p2, p0, Ldnl;->m:I

    .line 35
    return-void
.end method


# virtual methods
.method protected final b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Ldnl;->m:I

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;-><init>(FII)V

    .line 40
    .local v0, "fontSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/FontSpan;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41
    return-object p1
.end method
