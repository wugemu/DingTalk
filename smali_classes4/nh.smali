.class public final Lnh;
.super Ljava/lang/Object;
.source "ASTFactory.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Class;

.field protected c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lnh;->a:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lnh;->b:Ljava/lang/Class;

    .line 51
    iput-object v0, p0, Lnh;->c:Ljava/util/Hashtable;

    .line 54
    return-void
.end method
