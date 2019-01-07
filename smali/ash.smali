.class public final Lash;
.super Ljava/lang/Object;
.source "CalendarShareParamObject.java"


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .param p3, "privilege"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lash;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lash;->c:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lash;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lash;->e:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Laqr;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 31
    new-instance v0, Laqr;

    invoke-direct {v0}, Laqr;-><init>()V

    .line 32
    .local v0, "shareModel":Laqr;
    iget-object v1, p0, Lash;->b:Ljava/lang/String;

    iput-object v1, v0, Laqr;->a:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lash;->c:Ljava/util/List;

    iput-object v1, v0, Laqr;->b:Ljava/util/List;

    .line 34
    iget-object v1, p0, Lash;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-nez v1, :cond_0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Laqr;->c:Ljava/lang/Integer;

    .line 35
    iget-object v1, p0, Lash;->e:Ljava/lang/String;

    iput-object v1, v0, Laqr;->d:Ljava/lang/String;

    .line 36
    iget-boolean v1, p0, Lash;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Laqr;->e:Ljava/lang/Boolean;

    .line 38
    return-object v0

    .line 34
    :cond_0
    iget-object v1, p0, Lash;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v1

    goto :goto_0
.end method
