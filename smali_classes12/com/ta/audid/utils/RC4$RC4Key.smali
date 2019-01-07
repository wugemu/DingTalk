.class Lcom/ta/audid/utils/RC4$RC4Key;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/audid/utils/RC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RC4Key"
.end annotation


# instance fields
.field public state:[I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ta/audid/utils/RC4$RC4Key;->state:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ta/audid/utils/RC4$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ta/audid/utils/RC4$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ta/audid/utils/RC4$RC4Key;-><init>()V

    return-void
.end method
