.class public Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
.super Ljava/lang/Object;
.source "UserMobileObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mobile:Ljava/lang/String;

.field public stateCode:Ljava/lang/String;

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    .line 34
    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-wide v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->uid:J

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method
