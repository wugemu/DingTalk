.class public final Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;
.super Ljava/lang/Object;
.source "TeleConfSearchObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

.field public b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    .line 32
    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->c:Ljava/lang/String;

    .line 34
    return-void
.end method
