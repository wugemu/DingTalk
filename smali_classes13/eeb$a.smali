.class final Leeb$a;
.super Ljava/lang/Object;
.source "AttendanceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/ImageView;

.field final synthetic e:Leeb;


# direct methods
.method private constructor <init>(Leeb;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Leeb$a;->e:Leeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leeb;B)V
    .locals 0
    .param p1, "x0"    # Leeb;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Leeb$a;-><init>(Leeb;)V

    return-void
.end method
