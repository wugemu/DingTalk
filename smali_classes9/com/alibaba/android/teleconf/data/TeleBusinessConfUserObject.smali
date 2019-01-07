.class public final Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
.super Ljava/lang/Object;
.source "TeleBusinessConfUserObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;,
        Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public c:Z

.field public d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->b:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->c:Z

    .line 39
    iput-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->d:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$a;

    .line 40
    iput-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->i:Z

    .line 45
    return-void
.end method
