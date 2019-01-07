.class public final enum Lcom/j256/ormlite/logger/Log$Level;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/logger/Log$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum DEBUG:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum ERROR:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum FATAL:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum INFO:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum TRACE:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum WARNING:Lcom/j256/ormlite/logger/Log$Level;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    .line 32
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v3, v4}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    .line 34
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v4, v5}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    .line 36
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "WARNING"

    invoke-direct {v0, v1, v5, v6}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    .line 38
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v6, v7}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    .line 40
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string/jumbo v1, "FATAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/j256/ormlite/logger/Log$Level;

    const/4 v1, 0x0

    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v2, v0, v1

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    aput-object v1, v0, v7

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->$VALUES:[Lcom/j256/ormlite/logger/Log$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/j256/ormlite/logger/Log$Level;->level:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/j256/ormlite/logger/Log$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/logger/Log$Level;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/logger/Log$Level;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->$VALUES:[Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/Log$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/Log$Level;

    return-object v0
.end method


# virtual methods
.method public final isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 2
    .param p1, "otherLevel"    # Lcom/j256/ormlite/logger/Log$Level;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget v0, p0, Lcom/j256/ormlite/logger/Log$Level;->level:I

    iget v1, p1, Lcom/j256/ormlite/logger/Log$Level;->level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
