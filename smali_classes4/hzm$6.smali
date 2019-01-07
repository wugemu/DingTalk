.class public final Lhzm$6;
.super Ljava/lang/Object;
.source "BubbleAnimateWrapper.java"

# interfaces
.implements Lhzp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhzp;

.field final synthetic b:Lhzm;


# direct methods
.method public constructor <init>(Lhzm;Lhzp;)V
    .locals 0
    .param p1, "this$0"    # Lhzm;

    .prologue
    .line 243
    iput-object p1, p0, Lhzm$6;->b:Lhzm;

    iput-object p2, p0, Lhzm$6;->a:Lhzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final a(Lhzp;)V
    .locals 1
    .param p1, "springSet"    # Lhzp;

    .prologue
    .line 250
    iget-object v0, p0, Lhzm$6;->a:Lhzp;

    invoke-virtual {v0}, Lhzp;->b()V

    .line 251
    return-void
.end method
