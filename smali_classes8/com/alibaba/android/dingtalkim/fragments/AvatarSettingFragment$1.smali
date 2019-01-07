.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
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
        "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;)Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    .line 128
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 137
    return-void
.end method
