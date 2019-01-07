.class public final Llhb;
.super Ljava/lang/Object;
.source "RxAndroidSchedulersHook.java"


# static fields
.field private static final a:Llhb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Llhb;

    invoke-direct {v0}, Llhb;-><init>()V

    sput-object v0, Llhb;->a:Llhb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Llhb;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Llhb;->a:Llhb;

    return-object v0
.end method

.method public static a(Llhf;)Llhf;
    .locals 0
    .param p0, "action"    # Llhf;

    .prologue
    .line 45
    return-object p0
.end method

.method public static b()Llgv;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
