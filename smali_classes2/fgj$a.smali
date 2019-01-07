.class final Lfgj$a;
.super Ljava/lang/Object;
.source "DepartmentHlvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lfgj;


# direct methods
.method private constructor <init>(Lfgj;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lfgj$a;->b:Lfgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfgj;B)V
    .locals 0
    .param p1, "x0"    # Lfgj;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lfgj$a;-><init>(Lfgj;)V

    return-void
.end method
