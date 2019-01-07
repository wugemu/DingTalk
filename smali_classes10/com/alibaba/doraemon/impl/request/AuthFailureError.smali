.class public Lcom/alibaba/doraemon/impl/request/AuthFailureError;
.super Lcom/alibaba/doraemon/impl/request/VolleyError;
.source "AuthFailureError.java"


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "User needs to (re)enter credentials."

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/doraemon/impl/request/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
