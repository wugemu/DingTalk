.class public final Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;
.super Ljava/lang/Object;
.source "TeleVideoUserWindowObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->a:Z

    .line 163
    iput v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->d:Z

    .line 165
    iput v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    .line 166
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "subscribeFlag"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    if-eq p1, v0, :cond_0

    .line 183
    iput p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    .line 186
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "State { "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mSubscribeFlag="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->c:I

    .line 219
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", mSubTimes="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->e:I

    .line 220
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 218
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
