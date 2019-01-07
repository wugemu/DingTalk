.class final Lbpc$a;
.super Ljava/lang/Object;
.source "CircleCommentDraftDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lbpc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lbpc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpc;-><init>(B)V

    sput-object v0, Lbpc$a;->a:Lbpc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lbpc;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lbpc$a;->a:Lbpc;

    return-object v0
.end method
