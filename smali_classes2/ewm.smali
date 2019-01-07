.class public Lewm;
.super Ljava/lang/Object;
.source "TeleConfPushManager.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcjo$a;

.field public b:Lcjo$a;

.field public c:Lcjo$a;

.field private e:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

.field private f:Landroid/content/Context;

.field private g:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lewm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewm;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;)V
    .locals 1
    .param p1, "uiView"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;
    .param p2, "userAdapter"    # Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lewm;->e:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    .line 55
    iget-object v0, p0, Lewm;->e:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lewm;->e:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lewm;->f:Landroid/content/Context;

    .line 58
    :cond_0
    iput-object p2, p0, Lewm;->g:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 59
    return-void
.end method

.method static synthetic a(Lewm;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .locals 1
    .param p0, "x0"    # Lewm;

    .prologue
    .line 40
    iget-object v0, p0, Lewm;->g:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lewm;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lewm;J)Z
    .locals 3
    .param p0, "x0"    # Lewm;
    .param p1, "x1"    # J

    .prologue
    .line 40
    .line 1348
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->e()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1349
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1351
    :cond_0
    const/4 v0, 0x1

    .line 40
    goto :goto_0
.end method

.method static synthetic b(Lewm;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;
    .locals 1
    .param p0, "x0"    # Lewm;

    .prologue
    .line 40
    iget-object v0, p0, Lewm;->e:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    return-object v0
.end method
