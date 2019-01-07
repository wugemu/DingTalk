.class public final Lcom/alibaba/dingtalk/share/share/ShareManager$b;
.super Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Z

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/dingtalk/share/share/ShareManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/share/share/ShareManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/ShareManager;

    .prologue
    const/4 v1, 0x0

    .line 897
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->d:Lcom/alibaba/dingtalk/share/share/ShareManager;

    invoke-direct {p0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 900
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b:Z

    .line 906
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/ShareManager$b;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .prologue
    const/4 v1, 0x0

    .line 897
    .line 1982
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1984
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 1987
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b:Z

    .line 1988
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->d:Lcom/alibaba/dingtalk/share/share/ShareManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setContent(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setPictureUrl(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setTitle(Ljava/lang/String;)V

    .line 897
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->d:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 1056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    .line 928
    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
