.class public final Lglc;
.super Ljava/lang/Object;
.source "CSpaceSaveErrorManager.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lglc;->a:Ljava/lang/String;

    .line 20
    sput-object v0, Lglc;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 14
    sput-object p0, Lglc;->a:Ljava/lang/String;

    .line 15
    sput-object p1, Lglc;->b:Ljava/lang/String;

    .line 16
    return-void
.end method
