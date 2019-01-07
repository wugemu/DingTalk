.class final Ldrc$1;
.super Ljava/lang/Object;
.source "DefaultAvatarsLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldrc;->a(Lcma;)Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;Lcma;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ldrc$1;->a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    iput-object p2, p0, Ldrc$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 1042
    if-eqz p1, :cond_2

    .line 1043
    iget-object v0, p0, Ldrc$1;->a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Ldrc$1;->a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->latestVersion:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrc$1;->a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->latestVersion:Ljava/lang/Long;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->latestVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->validTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1046
    iget-object p1, p0, Ldrc$1;->a:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 1047
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->validTime:Ljava/lang/Long;

    .line 1050
    :cond_0
    invoke-static {p1}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "im_default_avatars_cache"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "im_default_avatars_cache_time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1056
    :cond_1
    :goto_0
    return-void

    .line 1057
    :cond_2
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldrc$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 65
    return-void
.end method
