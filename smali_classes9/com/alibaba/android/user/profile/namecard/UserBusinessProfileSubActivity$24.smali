.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lflo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1762
    if-eqz p1, :cond_0

    .line 1763
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1764
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1765
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->g:[B

    .line 1766
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V

    .line 1768
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void
.end method
