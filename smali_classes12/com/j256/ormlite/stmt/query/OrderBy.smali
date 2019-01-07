.class public Lcom/j256/ormlite/stmt/query/OrderBy;
.super Ljava/lang/Object;
.source "OrderBy.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field private final c:Ljava/lang/String;

.field private final d:[Lcom/j256/ormlite/stmt/ArgumentHolder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "ascending"    # Z

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->a:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->b:Z

    .line 22
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->d:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 24
    return-void
.end method
