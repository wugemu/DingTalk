.class final Lfcm$11;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfcm;


# direct methods
.method constructor <init>(Lfcm;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 1105
    iput-object p1, p0, Lfcm$11;->a:Lfcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1105
    check-cast p1, Ljava/util/List;

    .line 2108
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    iget-object v0, p0, Lfcm$11;->a:Lfcm;

    iget-object v0, v0, Lfcm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lfcm$11;->a:Lfcm;

    invoke-static {v0, p1}, Lfcm;->a(Lfcm;Ljava/util/List;)V

    .line 1105
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1121
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v0, "getUserProfileList"

    invoke-static {v0, p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1128
    return-void
.end method
