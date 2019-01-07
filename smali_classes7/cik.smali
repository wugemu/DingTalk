.class final Lcik;
.super Ljava/lang/Object;
.source "ActivityThreadHandlerCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "STOP_ACTIVITY_SHOW"

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->b:I

    .line 32
    const-string/jumbo v0, "STOP_ACTIVITY_HIDE"

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->c:I

    .line 33
    const-string/jumbo v0, "SERVICE_ARGS"

    const/16 v1, 0x73

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->d:I

    .line 34
    const-string/jumbo v0, "STOP_SERVICE"

    const/16 v1, 0x74

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->e:I

    .line 35
    const-string/jumbo v0, "SCHEDULE_CRASH"

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->f:I

    .line 36
    const-string/jumbo v0, "SLEEPING"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcik;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcik;->g:I

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcik;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 8
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    const/4 v7, 0x0

    .line 40
    move v3, p1

    .line 42
    .local v3, "result":I
    :try_start_0
    sget-object v4, Lcik;->h:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 43
    const-string/jumbo v4, "android.app.ActivityThread$H"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcik;->h:Ljava/lang/Class;

    .line 45
    :cond_0
    sget-object v4, Lcik;->h:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 46
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 48
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 54
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return v3

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "dingtalkbase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ActivityThreadHandlerCallback getValue, error="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v4, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "result":Z
    iget v2, p1, Landroid/os/Message;->what:I

    .line 63
    .local v2, "what":I
    sget v3, Lcik;->b:I

    if-ne v2, v3, :cond_0

    .line 64
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 65
    .local v0, "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0}, Lcil;->b()V

    goto :goto_0

    .line 67
    .end local v0    # "listener":Lcil;
    :cond_0
    sget v3, Lcik;->c:I

    if-ne v2, v3, :cond_1

    .line 68
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 69
    .restart local v0    # "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0}, Lcil;->c()V

    goto :goto_1

    .line 71
    .end local v0    # "listener":Lcil;
    :cond_1
    sget v3, Lcik;->d:I

    if-ne v2, v3, :cond_2

    .line 72
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 73
    .restart local v0    # "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcil;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 75
    .end local v0    # "listener":Lcil;
    :cond_2
    sget v3, Lcik;->e:I

    if-ne v2, v3, :cond_3

    .line 76
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 77
    .restart local v0    # "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0}, Lcil;->d()V

    goto :goto_3

    .line 79
    .end local v0    # "listener":Lcil;
    :cond_3
    sget v3, Lcik;->f:I

    if-ne v2, v3, :cond_6

    .line 80
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 81
    .restart local v0    # "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcil;->b(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 82
    goto :goto_4

    .line 84
    .end local v0    # "listener":Lcil;
    :cond_4
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "handleMessage return "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5
    return v1

    .line 85
    :cond_6
    sget v3, Lcik;->g:I

    if-ne v2, v3, :cond_5

    .line 86
    iget-object v3, p0, Lcik;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcil;

    .line 87
    .restart local v0    # "listener":Lcil;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0}, Lcil;->e()V

    goto :goto_5
.end method
