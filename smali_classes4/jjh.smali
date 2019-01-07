.class public final Ljjh;
.super Ljava/lang/Object;
.source "AppMonitorAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    .line 15
    .local v0, "obj":Lju;
    iput-object p0, v0, Lju;->e:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lju;->f:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lju;->b:Ljava/lang/String;

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, v0, Lju;->a:Z

    .line 19
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Lju;)V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 35
    new-instance v0, Ljv;

    invoke-direct {v0}, Ljv;-><init>()V

    .line 36
    .local v0, "obj":Ljv;
    iput-object p0, v0, Ljv;->c:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Ljv;->d:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Ljv;->a:Ljava/lang/String;

    .line 39
    iput-wide p3, v0, Ljv;->b:D

    .line 40
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Ljv;)V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    .line 25
    .local v0, "obj":Lju;
    iput-object p0, v0, Lju;->e:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lju;->f:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lju;->b:Ljava/lang/String;

    .line 28
    iput-object p3, v0, Lju;->c:Ljava/lang/String;

    .line 29
    iput-object p4, v0, Lju;->d:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, v0, Lju;->a:Z

    .line 31
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Lju;)V

    .line 32
    return-void
.end method
