.class public final Lkii;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final a:Lkij;

.field private static final b:[Lkja;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v2, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 34
    .local v1, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkij;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    .local v0, "impl":Lkij;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "impl":Lkij;
    :goto_1
    sput-object v0, Lkii;->a:Lkij;

    .line 46
    const/4 v2, 0x0

    new-array v2, v2, [Lkja;

    sput-object v2, Lkii;->b:[Lkja;

    return-void

    .line 36
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .line 39
    .restart local v0    # "impl":Lkij;
    goto :goto_0

    .line 37
    .end local v0    # "impl":Lkij;
    :catch_1
    move-exception v2

    const/4 v0, 0x0

    .line 39
    .restart local v0    # "impl":Lkij;
    goto :goto_0

    .line 38
    .end local v0    # "impl":Lkij;
    :catch_2
    move-exception v2

    const/4 v0, 0x0

    .line 39
    .restart local v0    # "impl":Lkij;
    goto :goto_0

    .end local v0    # "impl":Lkij;
    :catch_3
    move-exception v2

    const/4 v0, 0x0

    .restart local v0    # "impl":Lkij;
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lkij;

    .end local v0    # "impl":Lkij;
    invoke-direct {v0}, Lkij;-><init>()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 2
    .param p0, "lambda"    # Lkotlin/jvm/internal/Lambda;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 80
    .line 1047
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    const-string/jumbo v1, "kotlin.jvm.functions."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lkja;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .prologue
    .line 61
    .line 1038
    new-instance v0, Lkhy;

    invoke-direct {v0, p0}, Lkhy;-><init>(Ljava/lang/Class;)V

    .line 61
    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lkjb;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lkotlin/jvm/internal/FunctionReference;)Lkjc;
    .locals 0
    .param p0, "f"    # Lkotlin/jvm/internal/FunctionReference;

    .prologue
    .line 86
    return-object p0
.end method

.method public static a(Lkid;)Lkje;
    .locals 0
    .param p0, "p"    # Lkid;

    .prologue
    .line 92
    return-object p0
.end method

.method public static a(Lkif;)Lkjf;
    .locals 0
    .param p0, "p"    # Lkif;

    .prologue
    .line 100
    return-object p0
.end method
