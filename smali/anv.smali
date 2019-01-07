.class public final Lanv;
.super Ljava/lang/Object;
.source "BindingXJSFunctionRegister.java"


# static fields
.field private static final b:Lanv;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lanv;

    invoke-direct {v0}, Lanv;-><init>()V

    sput-object v0, Lanv;->b:Lanv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lanv;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a()Lanv;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lanv;->b:Lanv;

    return-object v0
.end method
