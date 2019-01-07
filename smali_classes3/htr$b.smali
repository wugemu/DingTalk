.class public final Lhtr$b;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/Object;

.field static c:Ljava/lang/reflect/Method;

.field static d:Ljava/lang/reflect/Method;

.field static e:Ljava/lang/reflect/Method;

.field static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 938
    sput-boolean v1, Lhtr$b;->f:Z

    .line 942
    :try_start_0
    const-string/jumbo v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 943
    sput-object v1, Lhtr$b;->a:Ljava/lang/Class;

    const-string/jumbo v2, "getRuntime"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 944
    .local v0, "getRuntimeMethod":Ljava/lang/reflect/Method;
    sget-object v1, Lhtr$b;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lhtr$b;->b:Ljava/lang/Object;

    .line 945
    sget-object v1, Lhtr$b;->a:Ljava/lang/Class;

    const-string/jumbo v2, "isDebuggerActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lhtr$b;->c:Ljava/lang/reflect/Method;

    .line 946
    sget-object v1, Lhtr$b;->a:Ljava/lang/Class;

    const-string/jumbo v2, "startJitCompilation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lhtr$b;->d:Ljava/lang/reflect/Method;

    .line 947
    sget-object v1, Lhtr$b;->a:Ljava/lang/Class;

    const-string/jumbo v2, "disableJitCompilation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lhtr$b;->e:Ljava/lang/reflect/Method;

    .line 948
    const/4 v1, 0x1

    sput-boolean v1, Lhtr$b;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v1

    const-string/jumbo v1, "init system properties utils"

    .line 1022
    const-string/jumbo v2, "MotuCrashSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 956
    sget-boolean v3, Lhtr$b;->f:Z

    if-eqz v3, :cond_0

    .line 958
    :try_start_0
    sget-object v3, Lhtr$b;->c:Ljava/lang/reflect/Method;

    sget-object v4, Lhtr$b;->b:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, "objIsDebuggerActive":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "objIsDebuggerActive":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v2

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 961
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isDebuggerActive"

    invoke-static {v3, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 982
    sget-boolean v2, Lhtr$b;->f:Z

    if-eqz v2, :cond_0

    .line 984
    :try_start_0
    sget-object v2, Lhtr$b;->e:Ljava/lang/reflect/Method;

    sget-object v3, Lhtr$b;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    const/4 v1, 0x1

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 987
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "disableJitCompilation"

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
