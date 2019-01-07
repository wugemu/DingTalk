.class final Ljve;
.super Ljvd$b;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljvd;


# direct methods
.method constructor <init>(Ljvd;Ljvd$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljve;->c:Ljvd;

    iput-object p3, p0, Ljve;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljvd$b;-><init>(Ljvd$a;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljve;->c:Ljvd;

    invoke-static {v0}, Ljvd;->a(Ljvd;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ljve;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
