.class abstract Leur$e;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "e"
.end annotation


# instance fields
.field final synthetic o:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Leur$e;->o:Leur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 881
    invoke-direct {p0, p1}, Leur$e;-><init>(Leur;)V

    return-void
.end method
