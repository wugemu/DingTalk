.class public final Lhtr$a;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

.field static b:Ljava/lang/reflect/Method;

.field static c:Ljava/lang/reflect/Method;

.field static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 891
    sput-boolean v0, Lhtr$a;->d:Z

    .line 895
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 896
    sput-object v0, Lhtr$a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhtr$a;->b:Ljava/lang/reflect/Method;

    .line 897
    sget-object v0, Lhtr$a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "set"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhtr$a;->c:Ljava/lang/reflect/Method;

    .line 898
    const/4 v0, 0x1

    sput-boolean v0, Lhtr$a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    const-string/jumbo v0, "init system properties utils"

    .line 1022
    const-string/jumbo v1, "MotuCrashSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 906
    sget-boolean v1, Lhtr$a;->d:Z

    if-nez v1, :cond_0

    move-object v1, v2

    .line 913
    :goto_0
    return-object v1

    .line 907
    :cond_0
    invoke-static {p0}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 909
    :cond_1
    :try_start_0
    sget-object v1, Lhtr$a;->b:Ljava/lang/reflect/Method;

    sget-object v3, Lhtr$a;->a:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "invoke system properties get"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 913
    goto :goto_0
.end method
