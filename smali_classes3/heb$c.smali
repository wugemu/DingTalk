.class abstract Lheb$c;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lheb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field protected b:Lheb$b;

.field final synthetic c:Lheb;


# direct methods
.method public constructor <init>(Lheb;Lheb$b;Landroid/app/Activity;)V
    .locals 0
    .param p2, "runnable"    # Lheb$b;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 340
    iput-object p1, p0, Lheb$c;->c:Lheb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 342
    iput-object p2, p0, Lheb$c;->b:Lheb$b;

    .line 344
    :cond_0
    return-void
.end method
