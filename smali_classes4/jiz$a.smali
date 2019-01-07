.class final Ljiz$a;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/Object;

.field final synthetic c:Ljiz;


# direct methods
.method private constructor <init>(Ljiz;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 230
    iput-object p1, p0, Ljiz$a;->c:Ljiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Ljiz$a;->a:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Ljiz$a;->b:[Ljava/lang/Object;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Ljiz;Ljava/lang/String;[Ljava/lang/Object;B)V
    .locals 0
    .param p1, "x0"    # Ljiz;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Ljiz$a;-><init>(Ljiz;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
