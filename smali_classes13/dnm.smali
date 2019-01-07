.class public final Ldnm;
.super Ldni;
.source "LinkNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldni",
        "<",
        "Llda;",
        ">;"
    }
.end annotation


# instance fields
.field private i:J

.field private j:Ldnu$b;


# direct methods
.method public constructor <init>(Llda;JLdnu$b;Ldnx;)V
    .locals 0
    .param p1, "node"    # Llda;
    .param p2, "messageId"    # J
    .param p4, "linkClickListener"    # Ldnu$b;
    .param p5, "textColorProvider"    # Ldnx;

    .prologue
    .line 24
    invoke-direct {p0, p1, p5}, Ldni;-><init>(Lldd;Ldnx;)V

    .line 25
    iput-wide p2, p0, Ldnm;->i:J

    .line 26
    iput-object p4, p0, Ldnm;->j:Ldnu$b;

    .line 27
    return-void
.end method


# virtual methods
.method protected final b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Ldnm;->h:Lldd;

    check-cast v0, Llda;

    .line 1042
    iget-object v0, v0, Llda;->a:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v1, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;

    iget-object v0, p0, Ldnm;->h:Lldd;

    check-cast v0, Llda;

    .line 2042
    iget-object v2, v0, Llda;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Ldnm;->a()Ldnx;

    move-result-object v0

    invoke-interface {v0}, Ldnx;->e()I

    move-result v3

    iget-wide v4, p0, Ldnm;->i:J

    iget-object v6, p0, Ldnm;->j:Ldnu$b;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;-><init>(Ljava/lang/String;IJLdnu$b;)V

    .line 33
    .local v1, "linkSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35
    .end local v1    # "linkSpan":Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
    :cond_0
    return-object p1
.end method
