.class final Lftl$1;
.super Ljava/lang/Object;
.source "NameCardEditPrivacyViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsn;

.field final synthetic b:Lftl;


# direct methods
.method constructor <init>(Lftl;Lfsn;)V
    .locals 0
    .param p1, "this$0"    # Lftl;

    .prologue
    .line 28
    iput-object p1, p0, Lftl$1;->b:Lftl;

    iput-object p2, p0, Lftl$1;->a:Lfsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 34
    return-void
.end method
