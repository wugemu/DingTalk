.class public final Lgcw;
.super Ljava/lang/Object;
.source "SearchTypeItem.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconNormal"    # I
    .param p4, "iconHover"    # I
    .param p5, "typeIcon"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lgcw;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lgcw;->b:Ljava/lang/String;

    .line 11
    iput p3, p0, Lgcw;->c:I

    .line 12
    iput p4, p0, Lgcw;->d:I

    .line 13
    iput p5, p0, Lgcw;->f:I

    .line 14
    return-void
.end method
