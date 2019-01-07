.class public final Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;
.super Ljava/lang/Object;
.source "BaseBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

.field b:Landroid/view/View;

.field private c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    sget v0, Liff$d;->photo_page_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 255
    sget v0, Liff$d;->photo_waiting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 256
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 279
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V
    .locals 1
    .param p1, "photoPagerContext"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a()V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 270
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->c:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V

    .line 272
    :cond_0
    return-void
.end method
