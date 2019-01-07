.class final Ljnv$a;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljnv;


# direct methods
.method private constructor <init>(Ljnv;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Ljnv$a;->a:Ljnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljnv;B)V
    .locals 0
    .param p1, "x0"    # Ljnv;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Ljnv$a;-><init>(Ljnv;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Ljnv$a;->a:Ljnv;

    invoke-static {v0}, Ljnv;->a(Ljnv;)V

    .line 183
    return-void
.end method
