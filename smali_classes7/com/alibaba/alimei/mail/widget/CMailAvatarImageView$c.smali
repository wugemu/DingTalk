.class final Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;
.super Ljava/lang/Object;
.source "CMailAvatarImageView.java"

# interfaces
.implements Lade$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;)V
    .locals 1
    .param p1, "avatarView"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;->a:Ljava/lang/ref/WeakReference;

    .line 413
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetEmail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 421
    .line 1416
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 422
    .local v0, "avatarImageView":Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;
    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget v2, Laxo$f;->mail:I

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    .local v1, "mailTag":Ljava/lang/String;
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
