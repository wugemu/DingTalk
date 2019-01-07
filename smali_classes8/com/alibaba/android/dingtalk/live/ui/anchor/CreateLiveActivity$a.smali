.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;
.super Ljava/lang/Object;
.source "CreateLiveActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 562
    .local v0, "context":Landroid/content/Context;
    sget v1, Lbtp$g;->dt_lv_live_topic_length_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "40"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;->a:Ljava/lang/String;

    .line 563
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 567
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v1, 0x28

    .line 568
    .local v0, "keep":I
    sub-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 571
    :cond_0
    if-gtz v0, :cond_1

    .line 572
    const-string/jumbo v1, ""

    .line 576
    :goto_0
    return-object v1

    .line 573
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 574
    const/4 v1, 0x0

    goto :goto_0

    .line 576
    :cond_2
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
