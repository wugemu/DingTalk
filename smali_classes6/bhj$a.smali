.class public final Lbhj$a;
.super Ljava/lang/Object;
.source "DingPegDraftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lbhj;


# direct methods
.method private constructor <init>(Lbhj;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbhj$a;->b:Lbhj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbhj;B)V
    .locals 0
    .param p1, "x0"    # Lbhj;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lbhj$a;-><init>(Lbhj;)V

    return-void
.end method
