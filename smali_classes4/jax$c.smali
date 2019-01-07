.class final Ljax$c;
.super Landroid/os/AsyncTask;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljax;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Ljax$c;->a:Ljax;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Ljax$c;->b:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Ljax$c;->c:Ljava/lang/String;

    .line 188
    iput-object p4, p0, Ljax$c;->d:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    .line 2194
    iget-object v0, p0, Ljax$c;->a:Ljax;

    invoke-static {v0}, Ljax;->a(Ljax;)Ljaz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2198
    :cond_0
    iget-object v0, p0, Ljax$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Ljax$c;->b:Ljava/lang/String;

    invoke-static {v0}, Ljav;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2201
    :cond_1
    iget-object v0, p0, Ljax$c;->a:Ljax;

    invoke-static {v0}, Ljax;->a(Ljax;)Ljaz;

    move-result-object v0

    invoke-interface {v0}, Ljaz;->a()Ljay;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 179
    check-cast p1, Ljay;

    .line 1211
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Ljax$c;->a:Ljax;

    invoke-static {v0}, Ljax;->a(Ljax;)Ljaz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljax$c;->a:Ljax;

    invoke-static {v0}, Ljax;->a(Ljax;)Ljaz;

    :goto_0
    return-void

    .line 1213
    :cond_0
    const/4 v0, 0x0

    .line 1214
    iget-object v1, p0, Ljax$c;->a:Ljax;

    invoke-static {v1}, Ljax;->a(Ljax;)Ljaz;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1215
    const/16 v0, -0xa

    .line 1217
    :cond_1
    iget-object v1, p0, Ljax$c;->a:Ljax;

    invoke-virtual {v1, p1, v0}, Ljax;->a(Ljay;I)V

    goto :goto_0
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Void;

    .line 1206
    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 179
    return-void
.end method
