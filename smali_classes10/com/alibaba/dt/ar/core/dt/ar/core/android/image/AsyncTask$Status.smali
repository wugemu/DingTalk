.class public final enum Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

.field public static final enum FINISHED:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

.field public static final enum PENDING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

.field public static final enum RUNNING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->PENDING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 286
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->RUNNING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 290
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->FINISHED:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->PENDING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->RUNNING:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->FINISHED:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->$VALUES:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const-class v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->$VALUES:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    invoke-virtual {v0}, [Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$Status;

    return-object v0
.end method
