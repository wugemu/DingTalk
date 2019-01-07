.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lpo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 757
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 758
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$d;->cmail_dimen_20_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 761
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    return-object v1
.end method

.method public final bridge synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method
