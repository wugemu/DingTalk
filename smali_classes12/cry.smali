.class public Lcry;
.super Ljava/lang/Object;
.source "ViewObject.java"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcry;->b:Z

    .line 28
    iput-boolean v0, p0, Lcry;->c:Z

    return-void
.end method
