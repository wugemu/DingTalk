.class final Lfui$b;
.super Ljava/lang/Object;
.source "ExchangeCardHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lfui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lfui;

    invoke-direct {v0}, Lfui;-><init>()V

    sput-object v0, Lfui$b;->a:Lfui;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
