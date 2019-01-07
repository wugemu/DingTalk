.class final Lfiz$1;
.super Ljava/lang/Object;
.source "CrmContactViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfiz;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfiz;


# direct methods
.method constructor <init>(Lfiz;)V
    .locals 0
    .param p1, "this$0"    # Lfiz;

    .prologue
    .line 132
    iput-object p1, p0, Lfiz$1;->a:Lfiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1135
    iget-object v0, p0, Lfiz$1;->a:Lfiz;

    invoke-static {v0}, Lfiz;->a(Lfiz;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    if-eqz p1, :cond_0

    .line 1141
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Lfiz$1;->a:Lfiz;

    invoke-static {v1}, Lfiz;->b(Lfiz;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 148
    return-void
.end method
