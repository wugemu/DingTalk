.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$2;
.super Ljava/lang/Object;
.source "DocFontPropertyPanel.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3
    .param p1, "amount"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    const-string/jumbo v1, "sz"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method
