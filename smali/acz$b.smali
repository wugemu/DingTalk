.class final Lacz$b;
.super Ljava/lang/Object;
.source "MailOrgDomainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lacz;


# direct methods
.method private constructor <init>(Lacz;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lacz$b;->c:Lacz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lacz;B)V
    .locals 0
    .param p1, "x0"    # Lacz;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lacz$b;-><init>(Lacz;)V

    return-void
.end method
