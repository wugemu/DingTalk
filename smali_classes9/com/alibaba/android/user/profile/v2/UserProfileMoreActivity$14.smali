.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Lflo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1090
    if-nez p1, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1094
    :cond_0
    new-instance v3, Lcom/laiwang/protocol/media/MediaId;

    sget-object v4, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v3, v4}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 1095
    .local v3, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 1097
    .local v2, "encodedUidStr":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 1098
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "codedUid":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1101
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 1102
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    const/4 v4, 0x1

    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    .end local v0    # "codedUid":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;

    invoke-direct {v5, p0, v2, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;[Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v1

    .line 1106
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1107
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_1
    move-exception v1

    .line 1108
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
