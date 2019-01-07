.class public final Lgqn;
.super Ljava/lang/Object;
.source "DropDownItem.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgqn;-><init>(ILjava/lang/String;Z)V

    .line 56
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lgqn;->b:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgqn;->a:Z

    .line 51
    iput p1, p0, Lgqn;->c:I

    .line 52
    return-void
.end method
