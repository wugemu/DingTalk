.class final Ldoy$1;
.super Ljava/lang/Object;
.source "MenuFavoriteEmotionHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoy;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldoy;


# direct methods
.method constructor <init>(Ldoy;)V
    .locals 0
    .param p1, "this$0"    # Ldoy;

    .prologue
    .line 47
    iput-object p1, p0, Ldoy$1;->a:Ldoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    sget v0, Lctk$i;->dt_im_emotion_favorite_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 50
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v0, "060002"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lctk$i;->dt_emotion_add_fail_exceedlimiterror:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 53
    return-void
.end method
