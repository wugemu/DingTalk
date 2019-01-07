.class final Lcom/alibaba/android/user/channel/ChannelManangerActivity$6;
.super Ljava/lang/Object;
.source "ChannelManangerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelManangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$6;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 240
    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$6;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->d(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    .line 240
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 254
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 249
    return-void
.end method
