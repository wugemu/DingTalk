.class public final Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
.super Ljava/lang/Object;
.source "RemoteSpCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;,
        Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;

.field private b:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V
    .locals 3
    .param p1, "command"    # Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_command"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    .locals 2
    .param p0, "type"    # Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->GET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;-><init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V

    .line 30
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Ljava/lang/String;)V

    .line 32
    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value_type"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    .locals 2
    .param p0, "type"    # Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_PUT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;-><init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V

    .line 37
    .local v0, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->b(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2
    .param p1, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 67
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "key_value"

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key_value_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
