.class final Lme/leolin/shortcutbadger/ShortcutBadger$1;
.super Ljava/lang/Object;
.source "ShortcutBadger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/leolin/shortcutbadger/ShortcutBadger;->count(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lme/leolin/shortcutbadger/ShortcutBadger;


# direct methods
.method constructor <init>(Lme/leolin/shortcutbadger/ShortcutBadger;I)V
    .locals 0
    .param p1, "this$0"    # Lme/leolin/shortcutbadger/ShortcutBadger;

    .prologue
    .line 137
    iput-object p1, p0, Lme/leolin/shortcutbadger/ShortcutBadger$1;->b:Lme/leolin/shortcutbadger/ShortcutBadger;

    iput p2, p0, Lme/leolin/shortcutbadger/ShortcutBadger$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lme/leolin/shortcutbadger/ShortcutBadger$1;->b:Lme/leolin/shortcutbadger/ShortcutBadger;

    iget v2, p0, Lme/leolin/shortcutbadger/ShortcutBadger$1;->a:I

    invoke-virtual {v1, v2}, Lme/leolin/shortcutbadger/ShortcutBadger;->executeBadge(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
