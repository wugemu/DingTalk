.class final Lbkv$15$1;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkv$15;->a(Lcma;)V
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
.field final synthetic a:Lcma;

.field final synthetic b:Lbkv$15;


# direct methods
.method constructor <init>(Lbkv$15;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbkv$15;

    .prologue
    .line 881
    iput-object p1, p0, Lbkv$15$1;->b:Lbkv$15;

    iput-object p2, p0, Lbkv$15$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 881
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1884
    if-eqz p1, :cond_0

    .line 1887
    invoke-static {p1}, Lbkv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1888
    iget-object v1, p0, Lbkv$15$1;->a:Lcma;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 881
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Lbkv$15$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lbkv$15$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 894
    return-void
.end method
