.class public final Ldnn;
.super Ldni;
.source "ListItemNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldni",
        "<",
        "Lldc;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lldc;ILandroid/widget/TextView;Ldnx;)V
    .locals 1
    .param p1, "listItem"    # Lldc;
    .param p2, "index"    # I
    .param p3, "tvContent"    # Landroid/widget/TextView;
    .param p4, "textColorProvider"    # Ldnx;

    .prologue
    .line 24
    invoke-direct {p0, p1, p4}, Ldni;-><init>(Lldd;Ldnx;)V

    .line 25
    iput p2, p0, Ldnn;->i:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ldnn;->j:Landroid/widget/TextView;

    .line 27
    return-void
.end method


# virtual methods
.method protected final b(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;

    invoke-virtual {p0}, Ldnn;->a()Ldnx;

    move-result-object v1

    invoke-interface {v1}, Ldnx;->b()I

    move-result v1

    iget v2, p0, Ldnn;->i:I

    iget-object v3, p0, Ldnn;->j:Landroid/widget/TextView;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;-><init>(IIILandroid/widget/TextView;)V

    .line 32
    .local v0, "bulletSpan":Landroid/text/style/BulletSpan;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33
    return-object p1
.end method
