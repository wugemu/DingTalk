.class public Lcom/alibaba/android/user/model/TimezoneInfosObject;
.super Ljava/lang/Object;
.source "TimezoneInfosObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c109a7d43403911L


# instance fields
.field public etag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public needUpdate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public timezoneInfos:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lfqp;)Lcom/alibaba/android/user/model/TimezoneInfosObject;
    .locals 3
    .param p0, "model"    # Lfqp;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "object":Lcom/alibaba/android/user/model/TimezoneInfosObject;
    if-eqz p0, :cond_0

    .line 28
    new-instance v0, Lcom/alibaba/android/user/model/TimezoneInfosObject;

    .end local v0    # "object":Lcom/alibaba/android/user/model/TimezoneInfosObject;
    invoke-direct {v0}, Lcom/alibaba/android/user/model/TimezoneInfosObject;-><init>()V

    .line 29
    .restart local v0    # "object":Lcom/alibaba/android/user/model/TimezoneInfosObject;
    iget-object v1, p0, Lfqp;->a:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->needUpdate:Ljava/lang/Boolean;

    .line 30
    iget-object v1, p0, Lfqp;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->etag:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lfqp;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->timezoneInfos:Ljava/lang/String;

    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toIDL()Lfqp;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    new-instance v0, Lfqp;

    invoke-direct {v0}, Lfqp;-><init>()V

    .line 38
    .local v0, "model":Lfqp;
    iget-object v1, p0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->needUpdate:Ljava/lang/Boolean;

    iput-object v1, v0, Lfqp;->a:Ljava/lang/Boolean;

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->etag:Ljava/lang/String;

    iput-object v1, v0, Lfqp;->b:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/user/model/TimezoneInfosObject;->timezoneInfos:Ljava/lang/String;

    iput-object v1, v0, Lfqp;->c:Ljava/lang/String;

    .line 41
    return-object v0
.end method
