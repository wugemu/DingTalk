.class final Lfcm$3;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

.field final synthetic b:Lfcm;


# direct methods
.method constructor <init>(Lfcm;Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 1284
    iput-object p1, p0, Lfcm$3;->b:Lfcm;

    iput-object p2, p0, Lfcm$3;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1284
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2287
    iget-object v0, p0, Lfcm$3;->b:Lfcm;

    invoke-static {v0}, Lfcm;->f(Lfcm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2288
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2289
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2290
    int-to-long v0, v0

    iget-object v2, p0, Lfcm$3;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2291
    iget-object v0, p0, Lfcm$3;->b:Lfcm;

    invoke-static {v0}, Lfcm;->f(Lfcm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1304
    invoke-static {p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1300
    return-void
.end method
